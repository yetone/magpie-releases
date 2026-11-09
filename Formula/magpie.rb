class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3376/magpie-cli-darwin-arm64"
      sha256 "5673fbf02ee861926275a8acb283432063029a6c58ea140bd9ea2544355ffad1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3376/magpie-cli-darwin-amd64"
      sha256 "4d777827e48450bb7b1b4a3f0858a894cf8d59809a6b04a5f9902cad1afe59ee"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3376/magpie-cli-linux-arm64"
      sha256 "a4bf8189c439b2f367fedd2640d6072cb7e261ee3de57f6de4e6368edc78880c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3376/magpie-cli-linux-amd64"
      sha256 "6597670cfdefc70951aa7f0805a3a8fddb3fb4f46eb55312c6ace604be888734"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
