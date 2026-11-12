cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3820"
  sha256 arm:   "4ae20a851da5f9de03ac9d3ab23cd7f620c9bc3a8970d163c220ca21089e5e95",
         intel: "0474574a27228e3f706ff71222065ad5b35a74227e4063409dc18ebd87631beb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
