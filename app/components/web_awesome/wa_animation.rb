module Components
  module WebAwesome
    class WaAnimation < Phlex::HTML
      register_element :wa_animation

      def initialize(
        delay: 0,
        direction: "normal",
        duration: 1000,
        easing: "linear",
        end_delay: 0,
        fill: "auto",
        iteration_start: 0,
        iterations: Infinity,
        name: "none",
        play: false,
        playback_rate: 1,
        **attributes
      )
        @attributes = attributes.with_defaults({
          delay: delay,
          direction: direction,
          duration: duration,
          easing: easing,
          end_delay: end_delay,
          fill: fill,
          iteration_start: iteration_start,
          iterations: iterations,
          name: name,
          play: play,
          playback_rate: playback_rate
        })
      end

      def view_template(&)
        wa_animation(**@attributes, &)
      end
    end
  end
end
