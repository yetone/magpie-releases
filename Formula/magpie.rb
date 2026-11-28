class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5003/magpie-cli-darwin-arm64"
      sha256 "e31525432d7fabc358a505ad084f0b22282380faa14c7efa08e459c86982e375"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5003/magpie-cli-darwin-amd64"
      sha256 "6cde2263a40369d87db8d9471ca45059f1d77e5f968c4761bd6675fbc6766f31"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5003/magpie-cli-linux-arm64"
      sha256 "0bb5582711e245611eed751d291e0396d8f5ab021b2c4c1ec7d93ae676163b7e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5003/magpie-cli-linux-amd64"
      sha256 "b9318ca9360fbff5e0791552e79c2b377a0ddeccbd1c7d75c361e79f7859dab0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
