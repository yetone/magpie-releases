class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2991/magpie-cli-darwin-arm64"
      sha256 "bc765672c1253c567531cf62713e7650208bf809aa033ff7d68e2168c8af6d30"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2991/magpie-cli-darwin-amd64"
      sha256 "9ee5d0349fd44df6328500a0f81e8b3250711fd6aa59ce2c27ee5ef5e7ae7ac3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2991/magpie-cli-linux-arm64"
      sha256 "dd7d2db7f8b065a95ec678cb4aa26bfdc8cd329e02bb70a5b00109df6f6c8423"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2991/magpie-cli-linux-amd64"
      sha256 "904aca22c9abfc684e40eb4aa918872338993b9b3f9bdcd15ced4fec7a3737ef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
