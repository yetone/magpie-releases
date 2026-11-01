class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2537/magpie-cli-darwin-arm64"
      sha256 "99ec20b13e6d062da0e8fe64d245928186a271c40641465bfbbc4e1d7e38b6f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2537/magpie-cli-darwin-amd64"
      sha256 "a9274c86e47107f262d6aa623d953ebfe64e8a180317559ef4115942e97077c8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2537/magpie-cli-linux-arm64"
      sha256 "8d5bd144aa78c0627ad4fdafa579b7f9a3633c048a7e11e836a402554128a7b2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2537/magpie-cli-linux-amd64"
      sha256 "c947ff6d7cf6fa7b21a077167367ca5476423e217a40f125aba0c43d3e62e398"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
