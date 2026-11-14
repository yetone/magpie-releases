class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4214/magpie-cli-darwin-arm64"
      sha256 "5039b31d26725ee4cd106422427f083afa3455472dd98b2e11c17f8bd289ce65"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4214/magpie-cli-darwin-amd64"
      sha256 "504b523f10cea37da48f76812761f1166522b280cd2cc42e7af8386e606b9935"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4214/magpie-cli-linux-arm64"
      sha256 "2a1d0dcc0ae07a4c98a6cdf5a379e2c7702eb7d8183bc5a6bdd72f7d815549cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4214/magpie-cli-linux-amd64"
      sha256 "abab3c8a028da62e8f6563b11852c540e2579c37da0452e66b27851086ba81e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
