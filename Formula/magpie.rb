class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3424/magpie-cli-darwin-arm64"
      sha256 "b8ce04be3f3e64d20061b69820315dd37234cdee436af07db0fab92925556fd2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3424/magpie-cli-darwin-amd64"
      sha256 "da6ce2349588e4fb88fb074c6775ff8ce66cd370563447f57a1d40a691146bd9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3424/magpie-cli-linux-arm64"
      sha256 "59aabe7822ed440e7bb308f2d73069122f5e298638d6c1829e54f3e2d4a04d54"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3424/magpie-cli-linux-amd64"
      sha256 "d2e0a9ab436dc365b3967ff0a1f55d8b2b46204bc472ef188b84de7bfe3f9c3e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
