class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3469/magpie-cli-darwin-arm64"
      sha256 "eb067dc89ace0ee974041470b6d13928c3bc977ead0ffa86cc4f4d915ab72baa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3469/magpie-cli-darwin-amd64"
      sha256 "cfa9b0ffc23a5da896fb78f8eca760d429098f69312750a4c5e5402878932bea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3469/magpie-cli-linux-arm64"
      sha256 "59bf4989819383aea60c5dc439a0a62da7c97f17da88701a3c1cb66e472cc74b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3469/magpie-cli-linux-amd64"
      sha256 "148aa959cd07066dffdb605c2caccd36f1fb063263864c43022eb3339a2c5e72"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
