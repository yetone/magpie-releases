cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3435"
  sha256 arm:   "f5ea2462c49ddf8ffd625648ecb97db0ba762a08c3f00aa57a891b48385f82cd",
         intel: "735c17498fdbf79fdcb14836db1ad4a9a22468eb389a66effe9460017c3dfafd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
