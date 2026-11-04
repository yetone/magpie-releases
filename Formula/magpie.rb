class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2919/magpie-cli-darwin-arm64"
      sha256 "eaaa4be58ecf005fc9fcc8c2b35642082052e9980102d352ae5644eb863d6cd6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2919/magpie-cli-darwin-amd64"
      sha256 "69b661eb852eb7571ba2aabc9b28e3e001f7e6aa461091085779d6942a96c20d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2919/magpie-cli-linux-arm64"
      sha256 "6f60524c76cf432fb477169300ed833281e5a1c33ad6428b438f35d3c51d5386"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2919/magpie-cli-linux-amd64"
      sha256 "b4fab14dae235d50ad82e555b02bac6386660e31eac207bfa2e44bf4373ee3ee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
