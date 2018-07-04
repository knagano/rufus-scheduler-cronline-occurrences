require 'rufus-scheduler'

class Rufus::Scheduler
  class CronLine

    def occurrences(time0, time1)
      ret = []
      nt = time0.utc

      loop do
        nt = next_time(nt).utc
        break if time1.utc < nt
        ret << nt
      end

      ret
    end

  end
end
