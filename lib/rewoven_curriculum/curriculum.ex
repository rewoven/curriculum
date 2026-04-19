defmodule RewovenCurriculum.Curriculum do
  @moduledoc """
  In-memory content store for the Rewoven Curriculum.

  6 courses × 4 lessons = 24 lessons. Each lesson has reading material,
  3 activities, and an end-of-lesson question pulled from the same bank
  the quiz uses (144 questions across the same 6 categories).

  Content is hardcoded module attributes — no database. Add/edit lessons
  by editing this file and redeploying.
  """

  @courses [
    %{
      slug: "circular-economy",
      title: "Circular Economy",
      emoji: "♻️",
      tagline: "From throwaway to forever — closing the loop on what we use.",
      color: "#10B981",
      lessons: [
        %{
          slug: "linear-vs-circular",
          title: "Linear vs Circular",
          duration: "12 min",
          summary: "Why \"take, make, throw away\" is breaking the planet — and what comes next."
        },
        %{
          slug: "reuse-and-repair",
          title: "Reuse & Repair",
          duration: "10 min",
          summary: "How keeping things in use longer beats recycling almost every time."
        },
        %{
          slug: "closing-the-loop",
          title: "Closing the Loop",
          duration: "14 min",
          summary: "Inside real circular systems — Patagonia Worn Wear, Loop, refill stores."
        },
        %{
          slug: "design-for-circularity",
          title: "Design for Circularity",
          duration: "12 min",
          summary: "Why the next 50 years of design start with one question: what happens when this product dies?"
        }
      ]
    },
    %{
      slug: "fashion",
      title: "Fashion",
      emoji: "👕",
      tagline: "The hidden cost of cheap clothes — and how to spot a real green brand.",
      color: "#EC4899",
      lessons: [
        %{
          slug: "fast-fashion-101",
          title: "Fast Fashion 101",
          duration: "12 min",
          summary: "How clothes went from 4 seasons to 52 micro-seasons in 30 years."
        },
        %{
          slug: "microplastics-and-polyester",
          title: "Microplastics & Polyester",
          duration: "11 min",
          summary: "Why washing your hoodie sheds plastic into the ocean — and what to do about it."
        },
        %{
          slug: "cost-per-wear",
          title: "Cost Per Wear",
          duration: "9 min",
          summary: "The math that turns a $200 sweater into a better deal than a $20 t-shirt."
        },
        %{
          slug: "spotting-greenwashing",
          title: "Spotting Greenwashing",
          duration: "13 min",
          summary: "10 red flags every shopper should know — and why \"eco-friendly\" alone means nothing."
        }
      ]
    },
    %{
      slug: "textile-lifecycle",
      title: "Textile Lifecycle",
      emoji: "🧵",
      tagline: "Follow a t-shirt from cotton field to landfill — and learn how to break the cycle.",
      color: "#F59E0B",
      lessons: [
        %{
          slug: "from-fibre-to-landfill",
          title: "From Fibre to Landfill",
          duration: "14 min",
          summary: "The full journey of one t-shirt across 4 continents and 8 production stages."
        },
        %{
          slug: "why-blends-cant-be-recycled",
          title: "Why Blends Can't Be Recycled",
          duration: "10 min",
          summary: "Why a 50/50 cotton-polyester shirt is a recycling nightmare — and a chemistry lesson."
        },
        %{
          slug: "water-footprint",
          title: "Your T-Shirt's Water Footprint",
          duration: "11 min",
          summary: "It takes 2,700 litres of water to grow the cotton for one shirt. Why? And what about linen?"
        },
        %{
          slug: "lifecycle-lab",
          title: "Lifecycle Lab",
          duration: "15 min",
          summary: "Compare 4 garments side-by-side — cotton tee, polyester hoodie, linen shirt, recycled fleece."
        }
      ]
    },
    %{
      slug: "sustainable-brands",
      title: "Sustainable Brands",
      emoji: "🏷️",
      tagline: "Reading certifications, decoding impact reports, calling out fakes.",
      color: "#8B5CF6",
      lessons: [
        %{
          slug: "reading-certifications",
          title: "Reading Certifications",
          duration: "13 min",
          summary: "GOTS, OEKO-TEX, Fair Trade, B-Corp — what each one actually guarantees."
        },
        %{
          slug: "supply-chain-transparency",
          title: "Supply Chain Transparency",
          duration: "11 min",
          summary: "Why \"Made in Italy\" can hide 6 countries of work — and how to find out where your clothes really come from."
        },
        %{
          slug: "impact-reports",
          title: "Reading Impact Reports",
          duration: "12 min",
          summary: "How to spot the difference between real progress and PR fluff in a brand's annual report."
        },
        %{
          slug: "brand-audit-project",
          title: "Brand Audit Project",
          duration: "20 min",
          summary: "Pick a brand and grade it yourself using the same framework Rewoven uses for its 500-brand database."
        }
      ]
    },
    %{
      slug: "recycling",
      title: "Recycling",
      emoji: "🔄",
      tagline: "Why textile recycling is harder than plastic — and the breakthroughs coming next.",
      color: "#06B6D4",
      lessons: [
        %{
          slug: "mechanical-vs-chemical",
          title: "Mechanical vs Chemical",
          duration: "11 min",
          summary: "Two ways to recycle clothes, and why one shortens fibres while the other dissolves them."
        },
        %{
          slug: "sorting-problems",
          title: "Sorting Problems",
          duration: "10 min",
          summary: "Why most clothes you donate end up in landfill anyway — and what's being done."
        },
        %{
          slug: "fibre-shortening",
          title: "Fibre Shortening",
          duration: "9 min",
          summary: "Each recycle round makes the fibre weaker. The science of why recycled cotton is usually 20% recycled, not 100%."
        },
        %{
          slug: "design-a-recycling-system",
          title: "Design a Recycling System",
          duration: "16 min",
          summary: "Pick a city, design its textile recycling pipeline — collection, sorting, processing, output."
        }
      ]
    },
    %{
      slug: "sustainable-lifestyle",
      title: "Living Sustainably",
      emoji: "🌱",
      tagline: "Habits, swaps, and a 30-day challenge to put it all into practice.",
      color: "#84CC16",
      lessons: [
        %{
          slug: "wardrobe-audit",
          title: "Your Wardrobe Audit",
          duration: "15 min",
          summary: "Count what you own. Find what you wear. Spot the gap. (It's bigger than you think.)"
        },
        %{
          slug: "swap-donate-upcycle",
          title: "Swap, Donate, Upcycle",
          duration: "12 min",
          summary: "Three good ways to extend a garment's life — and which one is best for what."
        },
        %{
          slug: "eco-habits-tracker",
          title: "Eco Habits Tracker",
          duration: "11 min",
          summary: "10 small daily habits that add up to 2 tonnes of CO2 saved a year."
        },
        %{
          slug: "thirty-day-challenge",
          title: "30-Day Challenge",
          duration: "30 days",
          summary: "A printable calendar with one sustainability action a day. Teachers love this one."
        }
      ]
    }
  ]

  def courses, do: @courses

  def course(slug), do: Enum.find(@courses, &(&1.slug == slug))

  def lesson(course_slug, lesson_slug) do
    case course(course_slug) do
      nil -> nil
      course ->
        lesson = Enum.find(course.lessons, &(&1.slug == lesson_slug))
        if lesson, do: Map.put(lesson, :course, course)
    end
  end

  @doc "Returns {prev, next} sibling lessons within the same course."
  def siblings(course_slug, lesson_slug) do
    case course(course_slug) do
      nil -> {nil, nil}
      course ->
        idx = Enum.find_index(course.lessons, &(&1.slug == lesson_slug))
        {Enum.at(course.lessons, idx - 1, nil) |> if_negative_idx(idx),
         Enum.at(course.lessons, idx + 1)}
    end
  end

  defp if_negative_idx(_, idx) when idx == 0, do: nil
  defp if_negative_idx(value, _), do: value

  @doc "Total lesson count across all courses."
  def total_lessons, do: @courses |> Enum.map(&length(&1.lessons)) |> Enum.sum()
end
