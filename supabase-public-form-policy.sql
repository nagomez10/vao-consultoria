drop policy if exists "Public website can create contacts" on public.contacts;

create policy "Public website can create contacts"
on public.contacts
for insert
to anon
with check (
  source = 'Web'
  and status = 'nuevo'
);
