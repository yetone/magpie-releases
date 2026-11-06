cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3135"
  sha256 arm:   "12fcfa84255c9ae910c6cbee27ad75fd6a04ba1e2437e8129d70ed08b224c264",
         intel: "8171c1c054e41c46d73022fa80557322fcbd5768362f1486cdc412944b6b36a1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
