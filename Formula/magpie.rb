class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3750/magpie-cli-darwin-arm64"
      sha256 "5a1407f6b8fa89b67377d16a65d19e82b8e148b4ce168d24231bea81dcf50e4a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3750/magpie-cli-darwin-amd64"
      sha256 "ca10eb4ed0ba53bb031d27d2b471889298c631031644f7e63688d89f9e9601a2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3750/magpie-cli-linux-arm64"
      sha256 "c857d7a508650a3599b65c0085f4e466f67612cefc67add43e3d702b09115852"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3750/magpie-cli-linux-amd64"
      sha256 "3118c68274cf767a9fa373412d496018577d2bf6ed17817cf7e6b5e6c4ceb3d4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
