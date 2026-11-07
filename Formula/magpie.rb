class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3267/magpie-cli-darwin-arm64"
      sha256 "22dc5c8c509f2ab707c6644dd1924a0e7acc9bfdba05679413326a538478cdd9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3267/magpie-cli-darwin-amd64"
      sha256 "d787e4f67fc0f8eb10a5d9c420ae79c962580732458cf94884ba5ff6aaff303a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3267/magpie-cli-linux-arm64"
      sha256 "3228ddec177c860bfcaf0faec662196b444e053fb639dd4195e338b7d3a115e7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3267/magpie-cli-linux-amd64"
      sha256 "40c04d9ff3e3315772524f76526699008db529e85979891c39117e0baab764dc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
