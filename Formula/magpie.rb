class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4937/magpie-cli-darwin-arm64"
      sha256 "0495bc6b09972a98ac767bfbce1b156f00a1f71293b5e054a862fc1658c0750f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4937/magpie-cli-darwin-amd64"
      sha256 "db1e4726fe08d69abe7e58c1e97600f6e8a676ee8d898f484232bb4ac9dc549b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4937/magpie-cli-linux-arm64"
      sha256 "12f5aef38afdc4dba4fcebb5bd997cf92f2b3a2e99a39db4eff4346ff6c99892"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4937/magpie-cli-linux-amd64"
      sha256 "b7087c0dbfa753fa9088a0a9ab8d272aa05c1183fc54af864fdca4bcf353a574"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
