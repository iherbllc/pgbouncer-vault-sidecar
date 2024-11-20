exit_after_auth = true
auto_auth {
    method "kubernetes" {
        mount_path = "$AUTH_MOUNT"
        config = {
            role = "$VAULT_KUBERNETES_ROLE"
        }
    }

    sink "file" {
        config = {
            path = "/tmp/auth.token"
        }
    }
}
