class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1036/magpie-cli-darwin-arm64"
      sha256 "c7886c2fa89842eed04a8670cf478e02d62506fbfd7137dddb2652bf3f878d1e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1036/magpie-cli-darwin-amd64"
      sha256 "203abab250bccd60f570540766933175fec0bea66c729f237a1020a353339c30"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1036/magpie-cli-linux-arm64"
      sha256 "a62860ebee1ad61ec2563e8f9c853e520aa35451310f52f52e23f8f82a7c5457"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1036/magpie-cli-linux-amd64"
      sha256 "0bc38cc6a514ee04e5823117c57616649b3bcb1920661d242ff9c3981b472f1a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
