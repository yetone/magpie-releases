class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3251/magpie-cli-darwin-arm64"
      sha256 "b8bcff5a1ddb059ffcebe49a889fb46ddd2a46773afd3d70eabd373c9255fc37"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3251/magpie-cli-darwin-amd64"
      sha256 "94187889b09391c6c3ec92cbefd97e5daa6ad752cd33e112d1b8307476f7b674"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3251/magpie-cli-linux-arm64"
      sha256 "1ee30eaa97c9f4f9c59068414944f2bef681328cba9ce28337ceafcca3b65339"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3251/magpie-cli-linux-amd64"
      sha256 "60383f543d5b0d382d2a39653f3f47f6303266387b4f38e2a9c844b96e7eb0ca"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
