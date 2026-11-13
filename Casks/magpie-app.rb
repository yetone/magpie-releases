cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4059"
  sha256 arm:   "471fe775259d049c4d746615c47079d3e4436996369270599889910afa3dd15a",
         intel: "0c8baa35fa15e1d22553ae47a9d9bfd7d95268d57401816715ca620c85e3768b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
