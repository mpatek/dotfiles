import os


def main():
    here = os.path.dirname(os.path.realpath(__file__))
    files_dir = os.path.join(here, 'files')
    home_dir = os.path.expanduser('~')
    old_dir = os.path.join(home_dir, 'old_dotfiles')
    for root, _, files in os.walk(files_dir):
        for src_filename in files:
            src_filename = os.path.join(root, src_filename)
            dst_filename = os.path.join(
                home_dir, '.' + os.path.basename(src_filename)
            )
            print('linking', src_filename, 'to', dst_filename)
            if os.path.lexists(dst_filename):
                print(dst_filename, 'exists as a link. removing.')
                os.remove(dst_filename)
            elif os.path.exists(dst_filename):
                print(dst_filename, 'exists. moving to', old_dir)
                if not os.path.exists(old_dir):
                    os.makedirs(old_dir)
                old_filename = os.path.join(
                    old_dir, os.path.basename(dst_filename)
                )
                os.rename(dst_filename, old_filename)
            os.symlink(src_filename, dst_filename)


if __name__ == '__main__':
    main()
