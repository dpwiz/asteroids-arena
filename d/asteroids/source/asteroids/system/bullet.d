module asteroids.system.bullet;

import asteroids.component;
import asteroids.storage;

/// Create bullet at give point and direction
Entity spawnBullet(Storages!(Entities, BulletComponents) storages, v2f pos, float angle) {
  immutable e = storages.entities.create();

  storages.set!BulletComponents(e,
    Bullet.init,
    Position(pos),
    Velocity(v2f.fromAngle(angle) * Bullet.speed),
    );
  return e;
}

/// Update life timers for bullet and destroy them if needed
void updateBullet(Storages!(Entities, Bullet) storages, size_t i, Entity e, float dt) {
  if(storages.entities.aliveHas!Bullet(i)) {
    storages.bullet.modify(e, (a) { a.time -= dt; return a; });
  }
}