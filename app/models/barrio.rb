class Barrio < ActiveRecord::Base
  validates :nombre, presence: true
end

public

def promedioM2
    inicializar

    @props = @props.select { |propiedad| propiedad.superficie != nil }
    
    @props = @props.select { |propiedad| propiedad.operacion_id == 1 }
    
    totalPesos = 0
    totalM2 = 0
    
    @props.each { |propiedad| 
       totalPesos += propiedad.precio_pesos
       totalM2 += propiedad.superficie
    }
    
    if totalM2 > 0
      promedioM2 = totalPesos / totalM2   
    else
      promedioM2 = 0
    end 
end

def cantCodAmb1
    inicializar
    
    @props = @props.select { |propiedad| propiedad.ambientes == 1 }
    
    @props.size
end

def cantCodAmb2
    inicializar
    
    @props = @props.select { |propiedad| propiedad.ambientes == 2 }
    
    @props.size
end

def cantCodAmb3
    inicializar
    
    @props = @props.select { |propiedad| propiedad.ambientes == 3 }
    
    @props.size
end

def cantCodAmb4
    inicializar
    
    @props = @props.select { |propiedad| propiedad.ambientes != nil }
    @props = @props.select { |propiedad| propiedad.ambientes >= 4 }
    
    @props.size
end

def inicializar
    @props = Propiedad.all

    @props = @props.select { |propiedad|
       (propiedad.fecha_publicacion < Time.now) && (propiedad.fecha_finalizacion > Time.now) && (propiedad.estado_id == 1)
    }

    @props = @props.select { |propiedad| propiedad.barrio_id == id }  
end
