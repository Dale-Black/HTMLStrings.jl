using HTMLStrings
using Test

@testset "HTML Elements" begin
    html_tags = [:a, :abbr, :address, :area, :article, :aside, :audio, :b, :base, :bdi, :bdo,
    :blockquote, :body, :br, :button, :canvas, :caption, :cite, :code, :col, :colgroup,
    :data, :datalist, :dd, :del, :details, :dfn, :dialog, :divv, :dl, :dt, :em, :embed,
    :fieldset, :figcaption, :figure, :footer, :form, :h1, :h2, :h3, :h4, :h5, :h6, :head,
    :header, :hr, :html, :i, :iframe, :img, :input, :ins, :kbd, :label, :legend, :li, :link,
    :main, :map, :mark, :meta, :meter, :nav, :noscript, :object, :ol, :optgroup, :option,
    :output, :p, :param, :picture, :pre, :progress, :q, :rp, :rt, :ruby, :s, :samp, :script,
    :section, :select, :small, :source, :span, :strong, :style, :sub, :summary, :sup, :table,
    :tbody, :td, :textarea, :tfoot, :th, :thead, :time, :title, :tr, :track, :u, :ul, :var,
    :video, :wbr]

    @testset "Individual Tags" begin
        function test_tags()
            for tag_name in html_tags
                expected_output = """<$tag_name class=\"test-class\">Test content</$tag_name>"""
                generated_output = tag(tag_name, :class => "test-class", "Test content")
                @test expected_output == generated_output
            end
        end

        test_tags()
    end

    @testset "Nested Tags" begin
        html_tags_subset = [:div, :span, :p, :a]  # For simplicity, a smaller list of tags
        nested_html_tags_subset = [:span, :a]  # Tags that are commonly nested
    
        function test_nested_tags()
            for outer_tag in html_tags_subset
                for inner_tag in nested_html_tags_subset
                    expected_output = """<$outer_tag class=\"outer\"><$inner_tag class=\"inner\">Inner content</$inner_tag>Outer content</$outer_tag>"""
                    generated_output = tag(outer_tag, :class => "outer", tag(inner_tag, :class => "inner", "Inner content"), "Outer content")
                    @test expected_output == generated_output
                end
            end
        end

        test_nested_tags()
    end
end
