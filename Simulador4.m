clc
while true
    fprintf("\nFórmulario aplicaciones de ley de Gauss (Campo Elétrico) \n\t1)Esfera con cargas");
    fprintf("\n\t2)Línea infinita de cargas \n\t3)Placa infinita de cargas");
    fprintf("\n\t4)Esfera con cargas infintas \n\t5)Capacitores");
    fprintf("\n\t6)Salir");
    op = input("\nElige opción: ");
    pause(2);
    e_cero = (10.^-9)/(36*pi);
    if(op==1)
        clc;
        fprintf("Intensidad del campo eléctrico de esfera con cargas");
        Q = input("\nIngresa el valor de la carga en coulombs (C): ");
        r = input("\nIngresa el valor del radio en metros (m): ");
        E = (Q^2)/(4*pi*e_cero*(r^2));
        fprintf('Intensidad del campo eléctrico E = %10.10f V/m',E);
    elseif(op==2)
        clc;
        fprintf("Intensidad del campo eléctrico de línea infinita de cargas");
        pl = input("\nIngresa el valor de la densidad de carga en coulombs/metro (C/m): ");
        p = input("\nIngresa el valor del radio en metros (m): ");
        E = pl/(2*pi*p*e_cero);
        fprintf('Intensidad del campo eléctrico E = %10.10f V/m',E);
    elseif(op==3)
        clc;
        fprintf("Intensidad del campo eléctrico de placa infinita de cargas");
        ps = input("\nIngresa el valor de la densidad de carga en coulombs/metro cuadrado (C/(m^2)): ");
        E = ps/(2*e_cero);
        fprintf('Intensidad del campo eléctrico E = %10.10f V/m',E);
    elseif(op==4)
        clc;
        fprintf("Intensidad del campo eléctrico de placa infinita de cargas");
        pv = input("\nIngresa el valor de la densidad de carga en coulombs/metro cúbico (C/(m^3)): ");
        a = input("\nIngresa el valor del radio máximo en metros (m): ");
        r = input("\nIngresa el valor del radio mínimo en metros (m): ");
        E = ((a^3)*pv)/(3*(r^2)*e_cero);
        fprintf('Intensidad del campo eléctrico E = %10.10f V/m',E);
    elseif(op==5)
        clc;
        fprintf("Energía, capacitancia y resistencia de un capacitor");
        Q = input("\nIngresa el valor de la carga en coulombs (C): ");
        V = input("\nIngresa el valor del voltaje en volts (V): ");
        o = input("\nIngresa el valor de la conductivad en ohms/metro: ");
        d = input("\nIngresa el valor de la distancia en metros (m): ");
        A = input("\nIngresa el valor del área en metros cuadrados (m^2): ");
        We =(1/2)*Q*V;
        C = Q/V;
        R = d/(o*A);
        fprintf('Energía del capacitor We = %10.10f J',We);
        fprintf('Capacitancia del capacitor C = %10.10f F',C);
        fprintf('Resistencia del capacitor R = %10.10f ohms',R);
    elseif(op==6)
        break;
    end
end