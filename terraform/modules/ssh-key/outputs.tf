output ssh_key {
    value = hcloud_ssh_key.this.fingerprint

    depends_on = [
        hcloud_ssh_key.this
    ]
}