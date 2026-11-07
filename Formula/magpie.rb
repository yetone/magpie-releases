class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3270/magpie-cli-darwin-arm64"
      sha256 "2a6b08d75d898d1ab7c5f392ae0a60aa96592cbb634933d802698f533ec4e868"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3270/magpie-cli-darwin-amd64"
      sha256 "799681810fba93ca78c148f88f814bbc0d6109841b7fa00ef2ad77cf76ef365b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3270/magpie-cli-linux-arm64"
      sha256 "c176829400c9f35de3901135f2ff7546284a63c189cab88f74c46e1bbe5f322d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3270/magpie-cli-linux-amd64"
      sha256 "9d21570fd7549f78ea705a5fc8bf66cc0ea63b94a5b4e0195ee99a1ff53c1967"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
