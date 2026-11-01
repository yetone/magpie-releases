class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2509/magpie-cli-darwin-arm64"
      sha256 "701793ca5c85cd25153f78fa8abe0f588e1c9173c75b8419f9ac457abeaa3ef9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2509/magpie-cli-darwin-amd64"
      sha256 "43bfb051a10de1a20c8c27027aa3e83b6a393a86c8e2ecf55797b1acf9a63e80"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2509/magpie-cli-linux-arm64"
      sha256 "715fb9a8d411d48128c16228de164ea7582ab7334355dd8b23c59887a93910b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2509/magpie-cli-linux-amd64"
      sha256 "396da281b1f45f4d469353679cc273d4385eb4fc4b0e2013b3e587d7dc39025d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
