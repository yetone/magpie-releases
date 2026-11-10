class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3532/magpie-cli-darwin-arm64"
      sha256 "a5d986f22b4e737c3be78456c91f1f10e0656aa418cd8886711f09cd7a0f1d59"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3532/magpie-cli-darwin-amd64"
      sha256 "dc00b2ab444a510d50f46154e288e1e42e64fb5ed7e39b5eaa968f02fef6bfbd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3532/magpie-cli-linux-arm64"
      sha256 "926f7970e02275ba671a4802fc0956c3922b15f267f1324029c5b09da7595a39"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3532/magpie-cli-linux-amd64"
      sha256 "b635022597ce53426e08b2e22169a85233696ca2b6e57834986dca25ed04f7f3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
