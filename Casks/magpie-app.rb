cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2102"
  sha256 arm:   "dac422cbc77560096353afb8e527ca40862196571dc51497a6f5c7473d814d8b",
         intel: "9b96288406aacfa388a1965c89eaf242aa3136680c49b06e478666437e04d67b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
