class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2311/magpie-cli-darwin-arm64"
      sha256 "8dd780f457665b4d7fdfed5715d0241a5d199d2e6fceb345987c52ebeb221fca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2311/magpie-cli-darwin-amd64"
      sha256 "7044026b993bf72df744a3cc69a95d27eb49ff0aed75f58af6588d6b79be15fc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2311/magpie-cli-linux-arm64"
      sha256 "7f06f37b845a53060577cd762735f64c6d6e6dae266faf7780c59b91e42c83ce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2311/magpie-cli-linux-amd64"
      sha256 "b2a7a39c7c83a1a6022e5d1a69b23d5b0ad266af48bd8817b586e30236fd3537"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
