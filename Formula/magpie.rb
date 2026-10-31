class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2331/magpie-cli-darwin-arm64"
      sha256 "48dd5d10a06382ae8f9605cfec4cf67eb07cd251de369c6c7f0991679aa1aeac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2331/magpie-cli-darwin-amd64"
      sha256 "ae636503b86401fa3afbe2bbbc9c97ab01f76f6e507a05801b768244817be77d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2331/magpie-cli-linux-arm64"
      sha256 "22b03b6f6d819fcbfa4a7177d701a5b1084a4f10afff279635c305ba11f5c3be"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2331/magpie-cli-linux-amd64"
      sha256 "ef2409c3ab6842002a6b5fcd620f0d28aab78af04a3a96c228e1694c16b36028"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
