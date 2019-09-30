load '../../test/libs/bats-support/load'
load '../../test/libs/bats-assert/load'

load 'main'

setup() {
  TMP_DIR="$(mktemp -d -t tmp.XXXXXXXXXX)"
  USERS_FILE="$TMP_DIR/users"
  echo "User file: $USERS_FILE" >&3
  echo -e "foo\nbar\nbaz" > "$USERS_FILE"
}

teardown() {
  echo "Deleting $TMP_DIR..." >&3
  rm -r "$TMP_DIR"
}

@test "Should fail for existing" {
    run create "foo" >&3
    [ "$status" -eq 1 ]
}

@test "Should fail for invalid" {
    run create "invalid"
    assert_failure
    assert_output "create: invalid is invalid"
}

@test "Should succeed for new" {
    run create "new"
    assert_success
    assert_output --partial "is created"
}

@test "Should fail for duplicate" {
    run create "duplicate"
    assert_success
    assert_output --partial "is created"
    run create "duplicate"
    assert_failure
    assert_output --partial "already exists"
}