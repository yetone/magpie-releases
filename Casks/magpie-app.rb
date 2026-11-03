cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2870"
  sha256 arm:   "e3279b9eee08382a857e330ea177971aae3c3136bb6996c0d00ac9def6f35491",
         intel: "74e51eaad56873f34ec876c22f4899abab054c91251ee45b5bf4ab88346126db"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
