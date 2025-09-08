---Bloco de código: sessão 2.2.5
DO
$$
BEGIN
    RAISE NOTICE 'Meu primeiro Bloco anônimo!!';
END;
$$

---Placeholder de expressões  em strings: sessão 2.3.1
DO
$$
BEGIN
RAISE NOTICE '% + % = %', 2, 2, 2 + 2;
END;
$$

---Declaração de variáveis: sessão 2.5.1
DO $$
DECLARE
  n1 NUMERIC(5, 2);
  n2 INTEGER;
  limite_inferior INTEGER := 5;
  limite_superior INTEGER := 17;
BEGIN

--limite_inferior <= n2 <= limite_superior
  n2 := limite_inferior + floor(random() * (limite_superior  - limite_inferior + 1))::int;
  RAISE NOTICE '% <= % <= %', limite_inferior, n2, limite_superior;  
  -- 4 <= n2 <= 9
  n2 := 4 + floor(random() * 6)::INT;
  RAISE NOTICE '4 <= % <= 9', n2;
  n2 := floor(random() * 10 + 1)::INT;
  RAISE NOTICE '1 <= % <= 10 ', n2;
  n2 := floor(random() * 10)::INT;
  RAISE NOTICE '0 <= % <= 9', n2;
  n1 := random() * 10;
  RAISE NOTICE '0 <= % < 10', n1;
  -- 0 <= n1 < 1 (real)
  n1 := random();
  RAISE NOTICE '0 <= % < 1', n1;
END;
$$