class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1126/magpie-cli-darwin-arm64"
      sha256 "2321240a0f322eaa975325e4f487b663b0697348601b313fcaad143f7a4333be"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1126/magpie-cli-darwin-amd64"
      sha256 "ba02ddad43a19f28570174f929afcaf244cd3f27ba2ca6ec1afe44d771c3cc84"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1126/magpie-cli-linux-arm64"
      sha256 "bc61b0c06370ec7ba0b48b84a86467350888e344863a0a76c1486561ec1ed1a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1126/magpie-cli-linux-amd64"
      sha256 "f5be790e14ee5d387e7dcc531b18bab8a1d75f5adf64c20ccd43202a49aa78e2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
