struct StochasticColonization <: AbstractDispersalModel
    C::Float64
end

function simulate(mechanism::StochasticColonization, old_state::AbstractState, new_state::AbstractState)
    locs = locations(old_state)
    specs = species(old_state)

    for s in specs
        for l in locs
            this_state = state(old_state, l, s)
            occ = isoccupied(old_state, l, s)
        end
    end

end

struct IncidenceFunctionColonization <: AbstractDispersalModel
    C::Float64
    α::Float64
    kernel::Function
end