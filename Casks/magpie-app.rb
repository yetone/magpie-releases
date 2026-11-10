cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3653"
  sha256 arm:   "1651251e122e2900cf24fc38dbbc5568a9696a88fc6b84bb622fc3cb2930e5eb",
         intel: "232a03cdbcb61ce3af72da3c207344049b45b2cc08b85bac0567d9c59be1bd3b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
