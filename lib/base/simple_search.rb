# 根据属性自动生成查询

module SimpleSearch
    def self.included(recipient)
      recipient.extend(ModuleClassMethods)
      recipient.class_eval do
        include ModuleInstanceMethods
      end
    end
    
  module Model
    def self.included(recipient)
      super
      @@simple_search_option = simple_search_options
    end

    module ModuleClassMethods
      def simple_search
        
      end

      def simple_search_options
        
      end
   end

    module ModuleInstanceMethods
    end
  end

  module Helper
      def simple_search_form the_class
        ret = '<div class="row">'

        ret += simple_form_for the_class.new, url: "/", defaults: {label_html: {class: "right inline"}, wrapper_html: {class: "small-4"}} do |f|
          tmp_f = ""
          the_class.columns.each do |c|
            tmp_f += c.name.eql?("binary") ? "" : f.input(c.name.to_sym)
          end
          tmp_f += f.button(:submit, I18n.t("helpers.search"))
          tmp_f.html_safe
        end

        ret += '</div>'

        ret.html_safe
      end
  end
end
