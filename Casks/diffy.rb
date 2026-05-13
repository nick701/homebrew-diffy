cask "diffy" do
  version "0.1.1"
  sha256 "91bc9b24f5b311335aa95a6d86da932ea4038b0ea34eb55520651188165928ff"

  url "https://github.com/nick701/diffy/releases/download/v#{version}/Diffy-#{version}.zip"
  name "Diffy"
  desc "Menu bar app that shows live git working-tree diff stats"
  homepage "https://github.com/nick701/diffy"

  app "Diffy.app"

  zap trash: "~/Library/Application Support/Diffy"

  caveats <<~EOS
    Diffy is ad-hoc signed and not notarized. macOS will block it on first launch
    unless you installed with --no-quarantine (recommended):

      brew install --cask --no-quarantine diffy

    If you already installed without that flag and see a Gatekeeper dialog, run:

      xattr -dr com.apple.quarantine /Applications/Diffy.app

    Then reopen Diffy normally.
  EOS
end
