class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4624/magpie-cli-darwin-arm64"
      sha256 "786f9039d6c7127a5611aad2a521a368a04fd7fe781a2f58ad061e00f81d66c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4624/magpie-cli-darwin-amd64"
      sha256 "932bce6ce36c9fb076a0a3bfdaf2c6a76e14bd1d1e96b3b31941a5c37beb98b9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4624/magpie-cli-linux-arm64"
      sha256 "deb69856c80913763892451049947f5967b2615981e756a5e67dac5c1d706d58"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4624/magpie-cli-linux-amd64"
      sha256 "e545d9f9ca16358bc690cd44e69e360cefe9f63606bc7e41c1e8519365a3af51"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
