module ApplicationHelper

  # navs: hash
  def foundation_header_navs navs
    "" and return if !navs.is_a?(Hash)
    ret = ret.to_s
    navs.each do |m, ns|
      if ns.is_a?(Hash)
        ret += %Q{
            <li class="has-dropdown"><a href="javascript:void(0)">#{m}</a>
              <ul class="dropdown">
                #{foundation_header_navs ns}
              </ul>
            </li>
        }
      else
        ret += %Q{<li class=""><a href="#{ns}">#{m}</a></li>}
      end
    end

    ret.html_safe
  end
end
