cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2083"
  sha256 arm:   "042892f6afa16c11fc59fdc366fedf5277223ffc82113a8316fd55da464a34d2",
         intel: "5975e81b748f913bf07e86040af061eab672ef813d600d3d7d8aa5a893514099"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
