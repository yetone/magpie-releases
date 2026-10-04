class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.890/magpie-cli-darwin-arm64"
      sha256 "80c81c0c8a90cbed20249185e903d35a254386a6d9f15df3ade81bf324763df2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.890/magpie-cli-darwin-amd64"
      sha256 "f881a2b9e448e0dc622a7a7c8b8a1b6272a475fd9a721d9979fb0628478ac040"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.890/magpie-cli-linux-arm64"
      sha256 "9a00824df49017c22306f5b9291583ddfd437108c32744599c7af332f4c9b425"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.890/magpie-cli-linux-amd64"
      sha256 "f18206ce18ccbcadfcecb0a3b9dcb056b4b3f24bfa8bdc88ecd48803c953d137"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
