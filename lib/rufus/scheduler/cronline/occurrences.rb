require 'rufus-scheduler'

class Rufus::Scheduler
  class CronLine

    def occurrences(time0, time1)
      ret = []
      nt = time0

      loop do
        nt = next_time(nt)
        break if time1 < nt
        ret << nt
      end

      ret
    end

  end
end
