cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2745"
  sha256 arm:   "4e344023bcc6192dbf7cb07161a1d5c2a404764dc879ffa185470f5f10019f26",
         intel: "d628fd7fa9bac4210ce912187ecb69af8ba84608e6745be3b74fa83e935ec99f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
