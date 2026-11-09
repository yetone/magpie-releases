class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3398/magpie-cli-darwin-arm64"
      sha256 "fbd5427edcd1880718a3ec59a62315663e3368e59088d4c3499de63e44663e39"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3398/magpie-cli-darwin-amd64"
      sha256 "ec17914916d6c843704924d233efd0272e40ac41b725d59655a7b6a4ce6c7442"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3398/magpie-cli-linux-arm64"
      sha256 "86b73fb7c64fa3e1db875381123559e30465df4f8aa8ef4cc8d845fb48496530"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3398/magpie-cli-linux-amd64"
      sha256 "7e9fe1cec87745e4c523a1bb37ce656ce9cfd6b1e23c8880a5d793a50cabf46d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
