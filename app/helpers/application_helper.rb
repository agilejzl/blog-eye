module ApplicationHelper

  def add_onliner
    onliners = all_onliners
    if onliners[session_id] && current_user
      onliners[session_id][:signed] = true
      onliners[session_id][:updated_at] = Time.now
    else
      onliners[session_id] = {
        signed: false, updated_at: Time.now, created_at: Time.now#, total_live_time: 0
      }
    end
    
    Rails.cache.write(onliner_cache_key, onliners)
  end

  def session_id
    "#{Rails.env}_#{session.id}"
  end

  def onliner_cache_key
    "#{Rails.env}_onliners"
  end

  def remove_old_onliner
    onliners = all_onliners
    onliners.delete session_id
    Rails.cache.write(onliner_cache_key, onliners)
  end

  def all_onliners
    onliners = Rails.cache.fetch(onliner_cache_key) || {}
  end

  def clear_onliners
    Rails.cache.write(onliner_cache_key, {})
  end

  def signed_count
    all_onliners.values.select { |user| user[:signed] == true }.count
  end

  def unsigned_count
    all_onliners.values.select { |user| user[:signed] == false }.count
  end

  def online_time
    ((Time.now - all_onliners[session_id][:created_at]) / 60).ceil
  end

  def site_intro
    "博客信息技术分享平台"
  end

  def site_fullname
    "#{Settings.site.name}(#{Settings.site.name_zh})"
  end

  def seo_intro
    "#{Settings.site.name_zh}, #{Settings.site.name}, #{controller_title}, #{meat_keywords}".gsub(' | ', ', ')
  end

  def default_title
    "#{controller_name}/#{action_name}"
  end

  def controller_title
    controller.try(:title) || default_title
  end

  def page_title
    "#{Settings.site.name_zh} | #{controller_title}"
  end

  def meat_keywords
    "关注最近的独家博文、代码分享, 在这里搭建博客、分享博文, 收藏并分享代码, 结识兴趣相投的博主, 相互分享IT信息和技术..."
  end

  def base_search_url
    Settings.site.search_site
  end

  def omited_str(str, length=60)
    str.truncate(length, separator: " ", omission: "...")
  end

  def js_alert(message="非常遗憾, 操作失败.")
    render js: "alert('#{message}')"
  end

  def js_reload
    render js: "document.location.reload()"
  end

  def js_reload_without_params
    render js: "window.location.href = location.href.split('?')[0]"
  end

  def draw_errors_message(ist_model)
    ist_model.errors.messages.map do |key, ms|
      ms.map do |m|
        info = t("activerecord.attributes.#{ist_model.class.to_s.underscore}")
        path = if info.is_a?(Hash)
          "#{info[key.to_sym]}: " if info.key?(key.to_sym)
        end
        "#{path} #{m}"
      end
    end.flatten
  end

  def post_tags_from_str(str)
    str.split(',').map{|tag| "&nbsp;<a target='_blank' href='#{base_search_url}#{tag}'><span class='badge'>#{tag}</span></a>"}.join.html_safe
  end

  def code_tags_from_str(str)
    self.post_tags_from_str(str)
  end
end
