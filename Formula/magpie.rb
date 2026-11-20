class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4584/magpie-cli-darwin-arm64"
      sha256 "a7e75f2713e3f4d51ca1c8a02bd8c10e9c2d3bceef3264479fbac3788981fc1d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4584/magpie-cli-darwin-amd64"
      sha256 "706fd8701167d0768f1b5a16ec1bac54e29016082b947fa4491bc737149dda23"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4584/magpie-cli-linux-arm64"
      sha256 "bd10d29a712fd8df0f91a37b4637990b1894cd5e7190f7c182ac4d9aba6e187f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4584/magpie-cli-linux-amd64"
      sha256 "db646746b1d5a8a72452e56c3f678f9b4dd8c54a82959f13fcfa8f38b280e8b9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
