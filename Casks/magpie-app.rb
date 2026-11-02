cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2691"
  sha256 arm:   "99cb5307aafac677c7b4f26da264c7ecaeed18bd2b508b81773e994908514542",
         intel: "51eda59eb10f0cc74161e20ca1e377d52298d8aa2abdbf7a717a2b53bdaee910"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
