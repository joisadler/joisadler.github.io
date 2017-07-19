module Jekyll
    module RussianDates
        MONTHS = {"01" => "января", "02" => "февраля", "03" => "марта",
                "04" => "апреля", "05" => "мая", "06" => "июня",
                "07" => "июля", "08" => "августа", "09" => "сентября",
                "10" => "октября", "11" => "ноября", "12" => "декабря"}

        # http://man7.org/linux/man-pages/man3/strftime.3.html
        def russianDate(date)
            day = time(date).strftime("%e") # leading zero is replaced by a space
            month = time(date).strftime("%m")
            year = time(date).strftime("%Y")
            day+' '+MONTHS[month]+' '+year
        end

        def html5date(date)
            day = time(date).strftime("%d")
            month = time(date).strftime("%m")
            year = time(date).strftime("%Y")
            year+'-'+month+'-'+day
        end
    end
end

Liquid::Template.register_filter(Jekyll::RussianDates)
