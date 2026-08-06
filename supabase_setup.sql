create table players (
  id bigint generated always as identity primary key,
  lieu text,
  match text,
  dossard text,
  prenom text,
  nom text,
  genre text,
  age text,
  equipe text,
  entraineur text,
  tel text,
  created_at timestamptz default now()
);

alter table players enable row level security;

create policy "Public read" on players for select using (true);
create policy "Public insert" on players for insert with check (true);
create policy "Public update" on players for update using (true);
create policy "Public delete" on players for delete using (true);
