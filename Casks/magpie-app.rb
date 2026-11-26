cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4878"
  sha256 arm:   "96bcb96b85384cb964e126ab406b08f9a28ae27e195c81c57857c2bf860bf06f",
         intel: "905d870f7fb8036e7961e41fc1de9b6a05cf8d0930cafba0746033d0daf6fbcb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
