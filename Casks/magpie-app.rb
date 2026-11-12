cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3932"
  sha256 arm:   "b08ba3d465ae94e60c395455eaba2e4b6576a855d6a68f91f3afd7dc1037157d",
         intel: "690364f84843b3dd04731975f195861f7a32bcc0832decce94e48e1ec9048135"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
