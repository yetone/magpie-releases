cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2635"
  sha256 arm:   "5bb28e32235ff6e5b59a18bc7ba74edf45799fdfe6697903be70a028773872a3",
         intel: "83ca6181e615950373875b104f7cebe81dea7426f1d57a54aa0aadb67628ad5c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
