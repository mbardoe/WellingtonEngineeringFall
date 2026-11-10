
// command: render

#set page(
  paper: "us-letter",
  margin: (x: 0.7in, y: 0.6in),
)

#set text(size: 11pt)
#set par(leading: 0.65em)

#let blank(len) = box(
  width: len,
  height: 0.5pt,
  stroke: 1pt + black
)

// Simple "gear" diagram.
// size controls the diameter of the circle.
#let gear(size, teeth, label: none) = {
  box(
    width: size,
    height: size,
    inset: 0pt,
    align(center + horizon)[
      #circle(
        width: size,
        height: size,
        stroke: 1.5pt + black,
        fill: none,
      )
      #place(
        center + horizon,
        [
          #text(size: 12pt, weight: "bold")[#teeth T]
          #if label != none {
            linebreak()
            text(size: 8pt)[#label]
          }
        ]
      )
    ]
  )
}

#let arrow-right = [
  #box(width: 0.45in)[
    #align(center + horizon)[
      #text(size: 18pt)[$arrow.r$]
    ]
  ]
]

#align(center)[
  #text(size: 18pt, weight: "bold")[Robotics: How Gears Change Motion]
]

#v(0.08in)

#grid(
  columns: (1fr, 1fr),
  gutter: 0.4in,
  [
    *Name:* #blank(2.1in)
  ],
  [
    *Date:* #blank(1.6in)
  ],
)

#v(0.15in)

== Why Use Gears?

A motor can already spin. So why put gears between the motor and the wheels?

Gears let us change how the motion of the motor reaches the rest of the robot.

#v(0.08in)

#box(
  width: 100%,
  inset: 10pt,
  stroke: 1pt + black,
  radius: 4pt,
)[
  #align(center)[
    #text(size: 13pt, weight: "bold")[
      Gears let us trade *speed* for *torque*.
    ]
  ]
]

#v(0.12in)

*Torque* means how strongly something can twist an axle.

A robot with more torque at its wheels may be able to push harder, climb better,
or resist being stopped.

#v(0.18in)

== Example 1: Gearing Down

Suppose a small 12-tooth gear drives a larger 60-tooth gear.

#v(0.08in)

#align(center)[
  #gear(0.75in, 12, label: "DRIVER")
  #h(0.08in)
  #arrow-right
  #h(0.08in)
  #gear(1.35in, 60, label: "DRIVEN")
]

#v(0.1in)

The small gear must turn several times to make the large gear turn once.

$
60 / 12 = 5
$

So the 12-tooth gear must turn *5 times* for the 60-tooth gear to turn *1 time*.

#v(0.08in)

This is called a *5:1 gear reduction*.

#v(0.08in)

#box(
  width: 100%,
  inset: 8pt,
  stroke: 1pt + black,
)[
  #grid(
    columns: (1fr, 1fr),
    gutter: 0.2in,
    [
      #align(center)[
        *OUTPUT SPEED* \
        Slower
      ]
    ],
    [
      #align(center)[
        *OUTPUT TORQUE* \
        Greater
      ]
    ]
  )
]

#v(0.15in)

*Think:* If you try to stop the large gear with your hand, why might it be harder
to stop than a wheel connected directly to the motor?

#v(0.55in)

== Example 2: Gearing Up

Now reverse the gears.

#v(0.08in)

#align(center)[
  #gear(1.35in, 60, label: "DRIVER")
  #h(0.08in)
  #arrow-right
  #h(0.08in)
  #gear(0.75in, 12, label: "DRIVEN")
]

#v(0.1in)

Now one turn of the large gear makes the small gear turn several times.

#box(
  width: 100%,
  inset: 8pt,
  stroke: 1pt + black,
)[
  #grid(
    columns: (1fr, 1fr),
    gutter: 0.2in,
    [
      #align(center)[
        *OUTPUT SPEED* \
        Faster
      ]
    ],
    [
      #align(center)[
        *OUTPUT TORQUE* \
        Less
      ]
    ]
  )
]

#v(0.15in)

== The Important Tradeoff

#align(center)[
  #table(
    columns: (1.2fr, 1fr, 1fr),
    inset: 7pt,
    stroke: 0.7pt,
    align: center,
    [*Gear Setup*], [*Speed*], [*Torque*],
    [Gear down], [Lower], [Higher],
    [Gear up], [Higher], [Lower],
    [1:1], [About the same], [About the same],
  )
]

#v(0.15in)

There is no single "best" gear ratio.

The best choice depends on what you want your robot to do.

#v(0.1in)

*For a racing robot,* you might want more #blank(1.2in).

#v(0.1in)

*For a pushing or Sumo robot,* you might want more #blank(1.2in).

#v(0.18in)

== Compound Gearing

Sometimes engineers use more than one set of gears.

For example:

#v(0.08in)

#align(center)[
  #gear(0.62in, 12)
  #h(0.04in)
  #arrow-right
  #h(0.04in)
  #gear(0.95in, 60)
  #h(0.12in)
  #text(size: 15pt, weight: "bold")[$times$]
  #h(0.12in)
  #gear(0.62in, 12)
  #h(0.04in)
  #arrow-right
  #h(0.04in)
  #gear(0.95in, 60)
]

#v(0.08in)

Each stage is a 5:1 reduction.

$
5 times 5 = 25
$

The total reduction is *25:1*.

That means the final axle turns much more slowly than the motor, but it can
produce much more torque.

#v(0.15in)

== Try It

*1.* A 12-tooth gear drives a 36-tooth gear.

$
36 / 12 = #blank(0.55in)
$

This is a #blank(0.7in):1 reduction.

#v(0.1in)

Will the output turn:

#h(0.15in) $square$ faster
#h(0.25in) $square$ slower

#v(0.2in)

*2.* A 60-tooth gear drives a 12-tooth gear.

Will the output have:

#h(0.15in) $square$ more torque
#h(0.25in) $square$ less torque

#v(0.2in)

*3.* Suppose you are designing a VEX IQ Sumo robot. Your robot needs to push
another robot out of the ring.

Would you prefer to gear your drivetrain more for *speed* or more for *torque*?

#v(0.55in)

Explain your reasoning:

#v(0.7in)

== Today's Robot Question

Look at the drivetrain you are building today.

Does the motor drive the wheel directly, or are gears used between the motor and
the wheel?

#v(0.45in)

What do you predict would happen if you changed the gear ratio?

#v(0.65in)

#box(
  width: 100%,
  inset: 9pt,
  stroke: 1.2pt + black,
  radius: 4pt,
)[
  #align(center)[
    #text(size: 13pt, weight: "bold")[
      Remember:
    ]

    #v(0.04in)

    *Gear down:* slower, stronger

    *Gear up:* faster, less torque
  ]
]

