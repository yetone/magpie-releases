cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3577"
  sha256 arm:   "b8b94b98597d00219cd9a708e25aec0e512d70b95c35be2452bd54c4eda39ccb",
         intel: "576748b50b7d6deafbbc398d2b081709107fe1d3e662d46e9c8189008dd8def0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
