cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2234"
  sha256 arm:   "0b54d6f36bd87104998175246cb55a977dd4a1346c0263c571389fb7240440bd",
         intel: "0e90bdee6e3f6f2983650cc64ad7ac7c08ad59d00dd6017fc10d86c8be283512"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
