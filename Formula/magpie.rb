class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3435/magpie-cli-darwin-arm64"
      sha256 "ef53971736652210362e4c7ea39ebdff237ea88043cbf6b8e0d38afd3c156b50"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3435/magpie-cli-darwin-amd64"
      sha256 "e92259046071d39e45506a7e2962f6f3d20888de8ef9df2c045ac9019734d3bc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3435/magpie-cli-linux-arm64"
      sha256 "03dd590ddeb2559db7a093358a10873608acdbefbe60c172e839ce9796fb9796"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3435/magpie-cli-linux-amd64"
      sha256 "95236dcc816dea8e78f8595c75ca2c2d4ba467cf39aa097a2f800be9a885b8d6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
